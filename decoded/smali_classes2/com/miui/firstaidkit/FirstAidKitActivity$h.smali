.class Lcom/miui/firstaidkit/FirstAidKitActivity$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llb/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/firstaidkit/FirstAidKitActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "h"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/firstaidkit/FirstAidKitActivity;",
            ">;"
        }
    .end annotation
.end field

.field private b:F


# direct methods
.method public constructor <init>(Lcom/miui/firstaidkit/FirstAidKitActivity;F)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity$h;->a:Ljava/lang/ref/WeakReference;

    iput p2, p0, Lcom/miui/firstaidkit/FirstAidKitActivity$h;->b:F

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 2

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity$h;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/firstaidkit/FirstAidKitActivity;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->n0(Lcom/miui/firstaidkit/FirstAidKitActivity;)Lcom/miui/firstaidkit/ui/FirstAidAnimView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setScaleX(F)V

    invoke-static {v0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->n0(Lcom/miui/firstaidkit/FirstAidKitActivity;)Lcom/miui/firstaidkit/ui/FirstAidAnimView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setScaleY(F)V

    const v1, 0x3f147ae1    # 0.58f

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/miui/firstaidkit/FirstAidKitActivity$h;->b:F

    mul-float/2addr p1, v1

    :goto_0
    invoke-static {v0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->l0(Lcom/miui/firstaidkit/FirstAidKitActivity;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->l0(Lcom/miui/firstaidkit/FirstAidKitActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setScaleX(F)V

    invoke-static {v0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->l0(Lcom/miui/firstaidkit/FirstAidKitActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setScaleY(F)V

    :cond_2
    invoke-static {v0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->m0(Lcom/miui/firstaidkit/FirstAidKitActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setScaleX(F)V

    invoke-static {v0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->m0(Lcom/miui/firstaidkit/FirstAidKitActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    :cond_3
    :goto_1
    return-void
.end method
