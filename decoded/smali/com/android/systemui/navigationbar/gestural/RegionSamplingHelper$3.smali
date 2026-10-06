.class Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper$3;
.super Landroid/view/CompositionSamplingListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;-><init>(Landroid/view/View;Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper$3;->a:Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;

    invoke-direct {p0, p2}, Landroid/view/CompositionSamplingListener;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public onSampleCollected(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper$3;->a:Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;

    invoke-static {v0}, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->f(Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper$3;->a:Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;

    invoke-static {v0, p1}, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->g(Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;F)V

    :cond_0
    return-void
.end method
