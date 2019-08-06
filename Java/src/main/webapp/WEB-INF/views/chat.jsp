<!DOCTYPE html>
<html>

<head>
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
  <title>Chat</title>
  <link href="https://fonts.googleapis.com/css?family=Work+Sans:100,200,300,400,500,600,700,800,900" rel="stylesheet">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
    integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/ionicons.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/style.css">
</head>

<body>
  <noscript>
    <h2>Sorry! Your browser doesn't support Javascript</h2>
  </noscript>


  <div id="username-page" class="split left" style="background-image: url(${pageContext.request.contextPath}/static/images/bg_2.jpg);">
    <div class="username-page-container centered">
      <h1 class="title">Enter your username</h1>
      <img src="${pageContext.request.contextPath}/static/images/username.png" alt="Avatar">
      <form id="usernameForm" name="usernameForm">
        <div class="form-group">
          <input type="text" id="name" placeholder="${loggedinuser}" autocomplete="off" class="form-control" />
        </div>
        <div class="form-group">
          <button type="submit" class="accent username-submit">Start Chatting</button>
        </div>
      </form>
    </div>
  </div>


  <div id="chat-page" class="hidden split right">
    <div class="chat-container centered">
      <div class="chat-header">
        <h2>Chat</h2>
      </div>
      <div class="connecting">
        Connecting...
      </div>
      <ul id="messageArea">

      </ul>
      <form id="messageForm" name="messageForm" nameForm="messageForm">
        <div class="form-group">
          <div class="input-group clearfix">
            <input type="text" id="message" placeholder="Type a message..." autocomplete="off" class="form-control" />
          </div>
          <div class="form-group">
            <button type="submit" class="primary chatBtn" style= "margin-top: 20px;">Send</button>
          </div>
        </div>
      </form>
    </div>
    </div>
  </div>


  <script src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.1.4/sockjs.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>
  <script src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/static/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="${pageContext.request.contextPath}/static/js/popper.min.js"></script>
  <script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
  <script src="${pageContext.request.contextPath}/static/js/jquery.waypoints.min.js"></script>
  <script src="${pageContext.request.contextPath}/static/js/jquery.stellar.min.js"></script>
  <script src="${pageContext.request.contextPath}/static/js/aos.js"></script>
  <script src="${pageContext.request.contextPath}/static/js/scrollax.min.js"></script>
  <script src="${pageContext.request.contextPath}/static/js/chat.js"></script>
  <script src="${pageContext.request.contextPath}/static/js/main.js"></script>
</body>

</html>