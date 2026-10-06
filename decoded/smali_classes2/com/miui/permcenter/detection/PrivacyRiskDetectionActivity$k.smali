.class Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$k;
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
    name = "k"
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

    iput-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$k;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$k;-><init>(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$k;->b(Ljava/lang/Boolean;)V

    return-void
.end method

.method public b(Ljava/lang/Boolean;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$k;->a:Ljava/lang/ref/WeakReference;

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

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v1, 0x1

    const/16 v2, 0x10

    if-nez p1, :cond_2

    invoke-static {v0}, Lvf/n;->a(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->h0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-static {v0}, Lcom/miui/permcenter/detection/model/d;->g(Landroid/content/Context;)Lcom/miui/permcenter/detection/model/d;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {v0}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->i0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)Lub/c;

    move-result-object p1

    invoke-virtual {p1, v1}, Lbc/a;->c(Z)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {v0}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->h0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->remove(I)V

    :goto_1
    invoke-static {v0}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->l0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-array v1, v1, [I

    const/4 v3, 0x0

    aput v2, v1, v3

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

    new-instance p1, Lub/e;

    invoke-static {v0}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->v0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)Lbc/a$a;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lub/e;-><init>(Landroid/content/Context;Lbc/a$a;)V

    invoke-static {v0, p1}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->u0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;Lub/e;)Lub/e;

    invoke-static {v0}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->t0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)Lub/e;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_3
    :goto_2
    return-void
.end method
