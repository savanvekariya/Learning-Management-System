const mysrvdemo = function (srv) {
  srv.on("myfoobar", (req, res) => {
    return "Hello world" + req.data.msg;
  });
};

module.exports = mysrvdemo;
