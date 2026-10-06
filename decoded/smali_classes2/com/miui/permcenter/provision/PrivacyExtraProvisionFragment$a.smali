.class final Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment$a;
.super Lbk/n;
.source "SourceFile"

# interfaces
.implements Lak/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbk/n;",
        "Lak/p<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Loj/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment$a;->a:Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "url"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileName"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment$a;->a:Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment;

    invoke-static {v0}, Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment;->d0(Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment;)Lcom/miui/permcenter/provision/c;

    move-result-object v0

    new-instance v1, Lcom/miui/permcenter/provision/d$a;

    iget-object v2, p0, Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment$a;->a:Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment;

    invoke-static {v2}, Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment;->b0(Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment;)Lcom/miui/permcenter/provision/PrivacyExtraProvisionActivity;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, "activity"

    invoke-static {v2}, Lbk/m;->r(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_0
    invoke-direct {v1, v2, p1, p2}, Lcom/miui/permcenter/provision/d$a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/miui/permcenter/provision/c;->b(Lcom/miui/permcenter/provision/d;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method
