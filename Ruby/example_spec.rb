require 'spec_helper'

describe "Todos JSON Interface" do

it "should create a todos item" do
r = HTTParty.post "http://lacedeamon.spartaglobal.com/todos"
  query: {title: "test todo", due: "2000-01-01"}
  
  expect(r.code).to eq(201)
  expect(r[title]).to eq("Test todo")
  expect(r["due"]).to eq("2000-01-01")
  
 # HTTParty.delete "http://lacedeamon.spartaglobal.com/todos"
end
end