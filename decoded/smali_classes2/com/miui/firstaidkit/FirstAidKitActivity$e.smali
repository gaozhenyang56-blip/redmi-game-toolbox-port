.class Lcom/miui/firstaidkit/FirstAidKitActivity$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/common/customview/AutoPasteListView$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/firstaidkit/FirstAidKitActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/firstaidkit/FirstAidKitActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/firstaidkit/FirstAidKitActivity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity$e;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 3

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity$e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/firstaidkit/FirstAidKitActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->i0(Lcom/miui/firstaidkit/FirstAidKitActivity;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    return-void

    :cond_1
    const v1, -0x40666666    # -1.2f

    mul-float/2addr p1, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr p1, v1

    invoke-static {v0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->j0(Lcom/miui/firstaidkit/FirstAidKitActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
