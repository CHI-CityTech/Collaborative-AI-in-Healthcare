#!/bin/bash
# Setup script for CHI Student Research Repository

echo "🚀 Setting up CHI Student Research Repository..."

# Trigger project board creation
echo "📋 Creating project board..."
gh workflow run setup-project-board.yml 2>/dev/null || echo "⚠️  Run manually: Actions → Setup Project Board → Run workflow"

# Create first research log
echo "📝 Ready to create your first Research Log issue!"
echo "   Go to Issues → New Issue → Research Log"

# Check if git is configured
if ! git config user.email > /dev/null; then
    echo "⚠️  Configure git:"
    echo "   git config user.name 'Your Name'"
    echo "   git config user.email 'your.email@example.com'"
fi

echo ""
echo "✅ Setup complete! Next steps:"
echo "   1. Update README.md with your project details"
echo "   2. Update CITATION.cff with your name and project info"
echo "   3. Create your first Milestone issue"
echo "   4. Start your first Research Log"
echo "   5. Connect to a CHI meta-project in references/meta-projects.md"
echo ""
echo "📚 Documentation: See docs/ folder"
echo "🎯 Project Board: Will be created automatically"
echo "📝 Citation: GitHub will create 'Cite this repository' button from CITATION.cff"