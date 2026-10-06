.class public final Lcom/miui/permcenter/wakepath/WakePathListFragment$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/permcenter/wakepath/WakePathListFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/permcenter/wakepath/WakePathListFragment;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/wakepath/WakePathListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/wakepath/WakePathListFragment$e;->a:Lcom/miui/permcenter/wakepath/WakePathListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1    # Landroid/text/Editable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "s"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljk/f;->t0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljk/f;->u0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/permcenter/wakepath/WakePathListFragment$e;->a:Lcom/miui/permcenter/wakepath/WakePathListFragment;

    invoke-static {v0}, Lcom/miui/permcenter/wakepath/WakePathListFragment;->h0(Lcom/miui/permcenter/wakepath/WakePathListFragment;)Llk/s1;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Llk/s1$a;->a(Llk/s1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/permcenter/wakepath/WakePathListFragment$e;->a:Lcom/miui/permcenter/wakepath/WakePathListFragment;

    invoke-static {v0, p1}, Lcom/miui/permcenter/wakepath/WakePathListFragment;->n0(Lcom/miui/permcenter/wakepath/WakePathListFragment;Ljava/lang/String;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "charSequence"

    invoke-static {p1, p2}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "charSequence"

    invoke-static {p1, p2}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
