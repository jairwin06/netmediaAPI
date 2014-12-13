/*
 ITP Data Art
 NYTimes Article Search v2 Simple Example
 
 **Note - you must put your API key in the first field for this to work!
 
 Article Search v2 docs: http://developer.nytimes.com/docs/read/article_search_api_v2 
 
 */

String apiKey = "API key here";
String baseURL = "http://api.nytimes.com/svc/search/v2/articlesearch.json?";

/*String word = "oil";
 int fromYear = 1920;
 int toYear = 2014;*/

void setup() {
  size(1280, 720, P3D);
  smooth(8);
  background(255);

  /*
  //This function returns a list of integers, counting a search term per year
   int[] oilSearches = doASearchYears(word, fromYear, toYear);
   
   //Which we can draw a bar chart from:
   for (int i = 0; i < oilSearches.length; i++) {
   fill(0, 150);
   float x = map(i, 0, oilSearches.length, 100, width - 100);
   float y = height - 100;
   float w = (width - 200)/oilSearches.length;
   float h = -map(oilSearches[i], 0, max(oilSearches), 0, height - 200);
   rect(x, y, w, h);
   fill(255);
   pushMatrix();
   translate(x, y);
   rotate(PI/2);
   textSize(10);
   text(i + 1901, 0, 8);
   popMatrix();
   }
   
   //It's often useful to save data like this (so we don't have to call the API every time once we're visualizing)
   PrintWriter writer = createWriter("data/"+word+"_"+fromYear+"_"+toYear+".csv");
   for (int i : oilSearches) writer.println(i);
   writer.flush();
   writer.close();
   //*/


  ASResult oil = doASearch("oil", "20130101", "20131231");

  //Or, a JSON list of the keywords associated with the story
  for ( int i=0; i<9; i++) {
    println(oil.docs[i].headline);
  }
  /*JSONObject headlines = oil.docs[i].headline;
   for (int j =0; j < headlines.size (); j++) {
   JSONObject hl = headlines.getJSONObject(j); 
   println(hl.getString("headline"), hl.getString("main"));
   //    }
   }
   //*/
}

void draw() {
}

