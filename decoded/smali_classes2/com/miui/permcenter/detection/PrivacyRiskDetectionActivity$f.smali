.class Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbc/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbc/a$a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
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

    iput-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$f;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$f;-><init>(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$f;->b(Ljava/lang/Boolean;)V

    return-void
.end method

.method public b(Ljava/lang/Boolean;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v0}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->m0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/16 v1, 0x16

    if-nez p1, :cond_1

    invoke-static {v0}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->h0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-static {v0}, Lcom/miui/permcenter/detection/model/d;->c(Landroid/content/Context;)Lcom/miui/permcenter/detection/model/b;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->i0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)Lub/c;

    move-result-object p1

    invoke-virtual {p1, v2}, Lbc/a;->c(Z)V

    invoke-static {v0}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->h0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->remove(I)V

    :goto_0
    invoke-static {v0}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->o0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const/4 v1, 0x3

    new-array v3, v1, [I

    fill-array-data v3, :array_0

    invoke-static {v0, v3}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->n0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;[I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {v0}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->l0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    invoke-static {v0, v1}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->k0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;[I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->j0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)Lsb/c;

    move-result-object p1

    invoke-static {v0}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->h0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-interface {p1, v1}, Lsb/c;->setState(I)V

    invoke-static {v0}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->p0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)V

    :cond_2
    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x10
        0xe
        0x16
    .end array-data

    :array_1
    .array-data 4
        0x10
        0xe
        0x16
    .end array-data
.end method
