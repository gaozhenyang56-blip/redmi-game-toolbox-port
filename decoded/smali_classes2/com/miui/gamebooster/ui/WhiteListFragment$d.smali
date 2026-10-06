.class Lcom/miui/gamebooster/ui/WhiteListFragment$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/ui/WhiteListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/ui/WhiteListFragment;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/WhiteListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/WhiteListFragment$d;->a:Lcom/miui/gamebooster/ui/WhiteListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListFragment$d;->a:Lcom/miui/gamebooster/ui/WhiteListFragment;

    invoke-virtual {v0}, Lcom/miui/gamebooster/ui/WhiteListFragment;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListFragment$d;->a:Lcom/miui/gamebooster/ui/WhiteListFragment;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/WhiteListFragment;->c0(Lcom/miui/gamebooster/ui/WhiteListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/miui/gamebooster/ui/WhiteListFragment$d;->a:Lcom/miui/gamebooster/ui/WhiteListFragment;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/WhiteListFragment;->c0(Lcom/miui/gamebooster/ui/WhiteListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/miui/gamebooster/ui/WhiteListFragment;->s0(Ljava/util/List;Z)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/WhiteListFragment$d;->a:Lcom/miui/gamebooster/ui/WhiteListFragment;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/WhiteListFragment;->d0(Lcom/miui/gamebooster/ui/WhiteListFragment;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListFragment$d;->a:Lcom/miui/gamebooster/ui/WhiteListFragment;

    invoke-static {v0, p1}, Lcom/miui/gamebooster/ui/WhiteListFragment;->l0(Lcom/miui/gamebooster/ui/WhiteListFragment;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
