describe "GITBranch +branchWithName:inRepo:" do
  before do
    @branch = GITBranch.branchWithName("master", inRepo:default_repository)
  end

  should "not be nil" do
    @branch.should.not.be.nil
  end
  should "have name 'master'" do
    @branch.name.should == 'master'
  end
end

describe "GITBranch +branchFromRef:inRepo:" do
  before do
    @ref = GITRef.refWithName("refs/heads/master", andTarget:"6c20014aaa67fc2ac4958f899b6d5494cb30331f", inRepo:default_repository)
    @branch = GITBranch.branchFromRef(@ref)
  end

  should "not be nil" do
    @branch.should.not.be.nil
  end
  should "have name 'master'" do
    @branch.name.should == 'master'
  end
end
