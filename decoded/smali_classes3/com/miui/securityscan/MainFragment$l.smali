.class Lcom/miui/securityscan/MainFragment$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/d0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securityscan/MainFragment;->i2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/d0<",
        "Lcom/miui/international/bean/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/securityscan/MainFragment;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/MainFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/MainFragment$l;->a:Lcom/miui/securityscan/MainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/miui/international/bean/a;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/MainFragment$l;->a:Lcom/miui/securityscan/MainFragment;

    iget-object v0, v0, Lcom/miui/securityscan/MainFragment;->z:Lcom/miui/common/card/CardViewAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/miui/common/card/CardViewAdapter;->getModelList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/international/bean/a;->a(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/securityscan/MainFragment$l;->a:Lcom/miui/securityscan/MainFragment;

    iget-object p1, p1, Lcom/miui/securityscan/MainFragment;->z:Lcom/miui/common/card/CardViewAdapter;

    invoke-virtual {p1}, Lcom/miui/common/card/CardViewAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/international/bean/a;

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/MainFragment$l;->a(Lcom/miui/international/bean/a;)V

    return-void
.end method
