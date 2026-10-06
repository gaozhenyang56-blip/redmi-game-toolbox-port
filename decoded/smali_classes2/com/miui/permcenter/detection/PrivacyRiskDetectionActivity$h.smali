.class Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$h;
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
    name = "h"
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

    iput-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$h;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$h;-><init>(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$h;->b(Ljava/lang/Boolean;)V

    return-void
.end method

.method public b(Ljava/lang/Boolean;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$h;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/16 v1, 0xe

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    invoke-static {v0}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->h0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-static {v0, v2}, Lcom/miui/permcenter/detection/model/d;->f(Landroid/content/Context;I)Lcom/miui/permcenter/detection/model/d;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {v0}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->i0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)Lub/c;

    move-result-object p1

    invoke-virtual {p1, v2}, Lbc/a;->c(Z)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->h0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->remove(I)V

    :goto_0
    invoke-static {v0}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->j0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)Lsb/c;

    move-result-object p1

    invoke-static {v0}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->h0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-interface {p1, v1}, Lsb/c;->setState(I)V

    invoke-static {v0}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->l0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 v1, 0x2

    new-array v3, v1, [I

    fill-array-data v3, :array_0

    invoke-static {v0, v3}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->k0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;[I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_2

    invoke-static {v0}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->m0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v0}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->o0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    invoke-static {v0, v1}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->n0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;[I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {v0}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->p0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)V

    goto :goto_1

    :cond_2
    new-instance p1, Lub/a;

    invoke-static {v0}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->s0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)Lbc/a$a;

    move-result-object v1

    invoke-direct {p1, v1}, Lub/a;-><init>(Lbc/a$a;)V

    invoke-static {v0, p1}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->r0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;Lub/a;)Lub/a;

    invoke-static {v0}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->q0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)Lub/a;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_3
    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x10
        0xe
    .end array-data

    :array_1
    .array-data 4
        0x10
        0xe
    .end array-data
.end method
