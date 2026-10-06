.class Lcom/miui/common/card/models/AdvCardModel$AdFeedbackListener;
.super Lcom/xiaomi/ad/feedback/IAdFeedbackListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/common/card/models/AdvCardModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdFeedbackListener"
.end annotation


# instance fields
.field private activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/securityscan/BaseAdvActivity;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private final weakReferenceModel:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/common/card/models/AdvCardModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/common/card/models/AdvCardModel;Lcom/miui/securityscan/BaseAdvActivity;)V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/ad/feedback/IAdFeedbackListener$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/common/card/models/AdvCardModel$AdFeedbackListener;->weakReferenceModel:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/miui/common/card/models/AdvCardModel$AdFeedbackListener;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/common/card/models/AdvCardModel$AdFeedbackListener;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$800(Lcom/miui/common/card/models/AdvCardModel$AdFeedbackListener;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/card/models/AdvCardModel$AdFeedbackListener;->activityRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method


# virtual methods
.method public onFinished(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel$AdFeedbackListener;->weakReferenceModel:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/card/models/AdvCardModel;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-lez p1, :cond_1

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/miui/common/card/models/AdvCardModel$AdFeedbackListener$1;

    invoke-direct {v1, p0, v0}, Lcom/miui/common/card/models/AdvCardModel$AdFeedbackListener$1;-><init>(Lcom/miui/common/card/models/AdvCardModel$AdFeedbackListener;Lcom/miui/common/card/models/AdvCardModel;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    invoke-static {}, Lc3/k;->g()Lc3/k;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel$AdFeedbackListener;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lc3/k;->l(Landroid/content/Context;)V

    return-void
.end method
