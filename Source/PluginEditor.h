#pragma once

#include "PluginProcessor.h"

//==============================================================================
class TestPluginEditor  : public juce::AudioProcessorEditor
{
public:
    explicit TestPluginEditor (TestPlugin&);
    ~TestPluginEditor() override;

    //==============================================================================
    void paint (juce::Graphics&) override;
    void resized() override;

private:
    // This reference is provided as a quick way for your editor to
    // access the processor object that created it.
    TestPlugin& processorRef;

    JUCE_DECLARE_NON_COPYABLE_WITH_LEAK_DETECTOR (TestPluginEditor)
};
