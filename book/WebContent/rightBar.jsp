<!DOCTYPE html>
<html>
<head>
<style>
div.img {
    margin: 5px;
    border: 1px solid #ccc;
    float: left;
    width: 180px;
}	

div.img:hover {
    border: 1px solid #777;
}

div.img img {
    width: 100%;
    height: 200px;
}

div.desc {
    padding: 15px;
    text-align: center;
    font-weight:bold;
    font-style:Ar Cena;
}
.button {
  display: inline-block;
  padding: 8px 75px;
  font-size: 10px;
  cursor: pointer;
  text-align: center;	
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: #4CAF50;
  border: none;
  border-radius:6px;
  box-shadow: 0 9px #999;
}

.button:hover {background-color: #3e8e41}

.button:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
.a{
font-size:15px;
}
</style>
</head>
<body>
<form action="BookDetailController">
<h1>Deals of The Day</h1>
<div class="img">
  <a target="rightBar" href="" >
    <img src="images/biology.jpeg" alt="" width="600" height="400">
  </a>
<button class="button" type="submit" name="bookname" value="BiologyBook">Biology</button>
</div>
<div class="img">
  <a target="_blank" href="everest.jpg">
    <img src="images/everest.jpg" alt="" width="600" height="400">
  </a>

<button class="button" type="submit" name="bookname" value="Everest">Everest</button>
</div>

<div class="img">
  <a target="_blank" href="thestonegods.jpg">
    <img src="images/thestonegods.jpg" alt="" width="600" height="400">
  </a>
  
<button class="button" type="submit" name="bookname" value="TheStonegods">TheStoneGods</button>
</div>

<div class="img">
  <a target="_blank" href="annehank.jpg">
    <img src="images/annehank.jpg" alt="" width="650" height="400">
  </a>
  
<button class="button" type="submit" name="bookname" value="AnneFrank">AnneFrank</button>
</div>
<div class="img">
  <a target="_blank" href="doubtless.jpg">
    <img src="images/doubtless.JPG" alt="" width="600" height="400">
  </a>

<button class="button" type="submit" name="bookname" value="Doubtless">Doubtless</button>
</div>
<div class="img">
  <a target="_blank" href="64days.gif">
    <img src="images/64days.gif" alt="" width="600" height="400">
  </a>
 
<button class="button" type="submit" name="bookname" value="64Days">64Days</button>
</div><div class="img">
  <a target="_blank" href="davincicode.jpg">
    <img src="images/davincicode.jpg" alt="" width="600" height="400">
  </a>
<button class="button" type="submit" name="bookname" value="TheDaVinciCode">TheDavinciCode</button>
</div>
<div class="img">
  <a target="_blank" href="Gameofthrones.jpg">
    <img src="images/Gameofthrones.jpeg" alt="" width="600" height="400">
  </a>
<button class="button" type="submit" name="bookname" value="GameOfThrones">GameofThrones</button>
</div>
<div class="img">
  <a target="_blank" href="maths.jpg">
    <img src="images/maths.jpg" alt="" width="600" height="400">
  </a>
<button class="button" type="submit" name="bookname" value="Mathematics">Mathematics</button>
</div>
<div class="img">
  <a target="_blank" href="r2020.jpg">
    <img src="images/r2020.jpg" alt="" width="600" height="400">
  </a>
<button class="button" type="submit" name="bookname" value="Revolution2020">Revolution2020</button>
</div>
</form>
</body>
</html>
