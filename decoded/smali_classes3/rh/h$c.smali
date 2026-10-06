.class Lrh/h$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrh/h;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrh/h;


# direct methods
.method constructor <init>(Lrh/h;)V
    .locals 0

    iput-object p1, p0, Lrh/h$c;->a:Lrh/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lrh/h$c;->a:Lrh/h;

    iget-object v1, v0, Lrh/h;->n:Lyh/a;

    iget-object v2, v0, Lrh/h;->i:Ljava/lang/String;

    iget-object v0, v0, Lrh/h;->k:Lxh/b;

    invoke-interface {v0}, Lxh/b;->a()Landroid/view/View;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lyh/a;->onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
