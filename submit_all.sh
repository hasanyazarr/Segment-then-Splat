mkdir -p logs

for scene in torchocolate americano chickchicken cut-lemon1 espresso hand1-dense-v2 keyboard oven-mitts slice-banana split-cookie; do
    sbatch --job-name=$scene run_train.sh $scene
done
