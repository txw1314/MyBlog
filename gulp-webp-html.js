"use strict";
const through = require('through2');  // npm i --save-dev through2
const pluginName = 'gulp-webp-html';


// 文件扩展名匹配正则
function getFileExtendingName(filename) {
  let reg = /\.[^\.]+$/;
  let matches = reg.exec(filename);
  if (matches) {
    return matches[0];
  }
  return '';
}

module.exports = function () {
  return through.obj(function (file, enc, cb) {
    if (file.isNull()) {
      cb(null, file)
      return
    }

    if (file.isStream()) {
      cb(new PluginError(pluginName, 'Streaming not supported'))
      return
    }

    try {
      let inPicture = false;
      const data = file.contents
        .toString()
        .split('\n')
        .map(line => {
          if (line.indexOf('<picture') + 1) inPicture = true;
          if (line.indexOf('</picture') + 1) inPicture = false;
          if (line.indexOf('<img') + 1 && !inPicture) {
            let imgReg = /<img(.*?)src="(.*?)"(.*?)>/gi;
            return line.replace(imgReg, (str, p1, src) => {
              if (src === ' ') return str;
              if (!src.startsWith('../../img')) return str;
              const extending = getFileExtendingName(src);
              if (extending.endsWith('.png')) {
                const path = src.replace(".png", "");
                return `<picture><source srcset="${path}.webp" type="image/webp">${str}</picture>`;
              } else if (extending.endsWith('.jpg')) {
                const path = src.replace(".jpg", "");
                return `<picture><source srcset="${path}.webp" type="image/webp">${str}</picture>`;
              } else if (extending.endsWith('.jpeg')) {
                const path = src.replace(".jpeg", "");
                return `<picture><source srcset="${path}.webp" type="image/webp">${str}</picture>`;
              } else {
                return str;
              }
            })
          }
          return line;
        }).join('\n')
      file.contents = new Buffer.from(data);
      this.push(file);
    } catch (err) {
      this.emit('error', new PluginError(pluginName, err))
    }
    cb()
  })
}