class Music < ActiveRecord::Base

  validates :song, presence: true, length:
    {minimum: 3, message: "must have at least 3 characters in it"}

    ##Line 3 and 4 - there are 2 parameters set in here. The first checks
    ##to see if there are any characters in the "song" field (from the edit and
    ##new views).  The second checks to see if you have typed at least 3
    ##characters in the "song" field (from the edit and new views).  This is
    ##1 of 2 files needed to make this validation work.  The second batch
    ##of code at the top of the edit and new views on lines 1-9 in each view.
    ##it is not necessary to add the code to both edit and new views to make this work,
    ##unless you want it to work for both creating AND editing the songs.

  validates :artist, presence: true, length:
    {minimum: 4, message: "must have at least 4 characters in it"}

    ##Line 15 and 16 - there are 2 parameters set in here. The first checks
    ##to see if there are any characters in the "artist" field (from the edit and
    ##new views).  The second checks to see if you have typed at least 3
    ##characters in the "artist" field (from the edit and new views).  This is
    ##1 of 2 files needed to make this validation work.  The second batch
    ##of code at the top of the edit and new views on lines 1-9 in each view.
    ##it is not necessary to add the code to both edit and new views to make this work,
    ##unless you want it to work for both creating AND editing the songs.


    ##side note.  I have not played around enough to see how adding a bunch more
    ##validations in here, will affect how it interacts with the code in the new and
    ##edit views on lines 1-9, but for now they interact just fine. 


end
