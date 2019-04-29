import turicreate as tc

# Load the style and content images
styles = tc.load_images('style/')
content = tc.load_images('content/')

# Create a StyleTransfer model
model = tc.style_transfer.create(styles, content, max_iterations=6000)

# Load some test images
test_images = tc.load_images('test/')

# Stylize the test images
stylized_images = model.stylize(test_images)

# Save the model for later use in Turi Create
model.save('StyleTransferModel.model')

# Export for use in Core ML
model.export_coreml('StyleTransferModel.mlmodel')
model.export_coreml('StyleTransferModel.mlmodel', image_shape=(800, 800))
