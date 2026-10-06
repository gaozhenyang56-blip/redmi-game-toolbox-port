.class Lkg/a$a;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkg/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkg/a;


# direct methods
.method constructor <init>(Lkg/a;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lkg/a$a;->a:Lkg/a;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object p1, p0, Lkg/a$a;->a:Lkg/a;

    invoke-static {p1}, Lkg/a;->a(Lkg/a;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lme/w;->S(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lkg/a$a;->a:Lkg/a;

    invoke-static {p1}, Lkg/a;->b(Lkg/a;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
