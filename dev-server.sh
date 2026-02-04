#!/bin/bash

# Local Development Server Launcher
# Starts both sites on different ports for simultaneous testing

echo "🍣 SUSHI HEY! Monorepo - Local Development Servers"
echo "=================================================="
echo ""

# Check if ports are available
check_port() {
    if lsof -Pi :$1 -sTCP:LISTEN -t >/dev/null 2>&1 ; then
        echo "⚠️  Port $1 is already in use"
        return 1
    fi
    return 0
}

# Start sushihey.com server
start_sushihey() {
    if check_port 8000; then
        cd sushi-hey-portal
        echo "🚀 Starting sushihey.com on http://localhost:8000"
        python3 -m http.server 8000 > /dev/null 2>&1 &
        SUSHI_PID=$!
        echo "   PID: $SUSHI_PID"
        cd ..
    else
        echo "   Skipping (already running)"
    fi
}

# Start nao-roy.com server
start_naoroy() {
    if check_port 8001; then
        cd nao-roy-studio
        echo "🚀 Starting nao-roy.com on http://localhost:8001"
        python3 -m http.server 8001 > /dev/null 2>&1 &
        NAOROY_PID=$!
        echo "   PID: $NAOROY_PID"
        cd ..
    else
        echo "   Skipping (already running)"
    fi
}

# Main execution
start_sushihey
start_naoroy

echo ""
echo "✅ Development servers running!"
echo ""
echo "📱 Access your sites:"
echo "   • sushihey.com → http://localhost:8000"
echo "   • nao-roy.com  → http://localhost:8001"
echo ""
echo "🛑 To stop servers:"
echo "   pkill -f 'python3 -m http.server'"
echo ""
echo "💡 Tip: Open both URLs in your browser to test side-by-side"
