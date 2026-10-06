.class public final Lsc/a$a;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsc/a;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Lsc/a;


# direct methods
.method constructor <init>(Landroid/net/Uri;Lsc/a;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lsc/a$a;->a:Landroid/net/Uri;

    iput-object p2, p0, Lsc/a$a;->b:Lsc/a;

    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0
    .param p2    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lsc/a$a;->a:Landroid/net/Uri;

    invoke-static {p1, p2}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lsc/a$a;->b:Lsc/a;

    invoke-static {p1}, Lsc/a;->a(Lsc/a;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lse/a;->e(Landroid/content/Context;)Z

    move-result p2

    invoke-static {p1, p2}, Lsc/a;->c(Lsc/a;Z)V

    iget-object p1, p0, Lsc/a$a;->b:Lsc/a;

    invoke-static {p1}, Lsc/a;->b(Lsc/a;)V

    :cond_0
    return-void
.end method
