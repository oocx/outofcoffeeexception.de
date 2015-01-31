module.exports = function (grunt) {
  grunt.initConfig({
    image_resize: {
      options: {
        width: 366,
        overwrite: false
      },
      files: {
        src: 'contents/articles/eindruecke-von-der-oop-2015/DSC*.*(jpg|JPG)',
        dest: 'contents/articles/eindruecke-von-der-oop-2015/t/'
      }
    }
  });

  grunt.loadNpmTasks('grunt-image-resize');
  grunt.registerTask('default', ['image_resize']);
};


/*
image_resize: {
options: {
width: 1920,
overwrite: true
},
files: {
src: 'contents/articles/eindruecke-von-der-oop-2015/DSC*.*(jpg|JPG)',
dest: 'contents/articles/eindruecke-von-der-oop-2015/'
}
}*/
