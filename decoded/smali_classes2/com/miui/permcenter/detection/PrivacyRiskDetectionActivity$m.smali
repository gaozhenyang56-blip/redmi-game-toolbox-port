.class Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "m"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$m;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$m;-><init>(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$m;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->I0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)Lcom/miui/common/customview/AutoPasteRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v0}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->I0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)Lcom/miui/common/customview/AutoPasteRecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->E0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "diffHeight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Privacy"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    if-lez v1, :cond_1

    invoke-static {v0}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->I0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)Lcom/miui/common/customview/AutoPasteRecyclerView;

    move-result-object v3

    invoke-static {v0}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->I0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)Lcom/miui/common/customview/AutoPasteRecyclerView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    invoke-virtual {v3, v2, v4, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->I0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)Lcom/miui/common/customview/AutoPasteRecyclerView;

    move-result-object v1

    invoke-static {v0}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->I0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)Lcom/miui/common/customview/AutoPasteRecyclerView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v1, v2, v3, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    :goto_0
    invoke-static {v0}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->d0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)V

    return-void
.end method
