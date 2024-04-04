# =============================================================================

update-content  :
	# commit new     content
	@-git add    --all
	# commit changed content
	@-git commit --all --message='update content'
	# push
	@-git push

update-tag      :
	# remove old tag
	@-git tag  --delete        COMS10015_2023
	@-git push --delete origin COMS10015_2023
	# add    new tag
	@-git tag                  COMS10015_2023 -m ''
	@-git push --tags   origin 

# =============================================================================
