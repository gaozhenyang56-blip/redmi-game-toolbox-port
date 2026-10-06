.class Lcom/miui/firstaidkit/FirstAidKitActivity$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llb/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/firstaidkit/FirstAidKitActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "k"
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


# direct methods
.method public constructor <init>(Lcom/miui/firstaidkit/FirstAidKitActivity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity$k;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 4

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity$k;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/firstaidkit/FirstAidKitActivity;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->k0(Lcom/miui/firstaidkit/FirstAidKitActivity;)I

    move-result v1

    rsub-int/lit8 v2, v1, 0x0

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    add-int/2addr v1, v2

    invoke-static {v0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->l0(Lcom/miui/firstaidkit/FirstAidKitActivity;)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->l0(Lcom/miui/firstaidkit/FirstAidKitActivity;)Landroid/widget/ImageView;

    move-result-object v2

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    invoke-static {v0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->m0(Lcom/miui/firstaidkit/FirstAidKitActivity;)Landroid/widget/ImageView;

    move-result-object v2

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationY(F)V

    invoke-static {v0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->k0(Lcom/miui/firstaidkit/FirstAidKitActivity;)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-static {v0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->n0(Lcom/miui/firstaidkit/FirstAidKitActivity;)Lcom/miui/firstaidkit/ui/FirstAidAnimView;

    move-result-object v2

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationY(F)V

    invoke-static {v0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->o0(Lcom/miui/firstaidkit/FirstAidKitActivity;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/miui/firstaidkit/FirstAidKitActivity;->R0(I)V

    :cond_2
    :goto_0
    return-void
.end method
