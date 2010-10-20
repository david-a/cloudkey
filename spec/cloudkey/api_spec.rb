require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Cloudkey::API do
  describe "Authentication" do
    it "should raise an error without an user_id" do
      lambda {Cloudkey::API.new nil, "foobar"}.should raise_error
    end

    it "should raise an error without an api_key" do
      lambda {Cloudkey::API.new "bob", nil}.should raise_error
    end
  end

  describe "Helpers methods" do
    before(:each) do
      @api = Cloudkey::API.new "foo", "bar"
    end

    it "should return Cloudkey::File when sending :file" do
      @api.file.should be_an_instance_of(Cloudkey::File)
    end

    it "should return Cloudkey::Media when sending :media" do
      @api.media.should be_an_instance_of(Cloudkey::Media)      
    end
  end

  describe "Normalizing" do
    {
      'foo42bar'                  => ['foo', 42, 'bar'],
      'pink3red2yellow1'          => {'yellow' => 1, 'red' => 2, 'pink' => 3},
      'foo42pink3red2yellow1bar'  => ['foo', 42, {'yellow' => 1, 'red' => 2, 'pink' => 3}, 'bar'],
      '12'                        => [nil, 1,2],
      ''                          => nil,
      '212345'                    => {2 => [nil, 1,2], 3 => nil, 4 => 5}
    }.each do |normalized, original| 
      it "should normalize #{original.inspect} into #{normalized}" do
        Cloudkey::API.normalize(original).should == normalized
      end
    end
  end

  describe "Signing" do
    before(:each) do
      @api = Cloudkey::API.new "foo", "bar"
    end

    it "should sign a string" do

    end
  end
end