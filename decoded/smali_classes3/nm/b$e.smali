.class Lnm/b$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnm/b;->j(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnm/b;


# direct methods
.method constructor <init>(Lnm/b;)V
    .locals 0

    iput-object p1, p0, Lnm/b$e;->a:Lnm/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lnm/b$e;->a:Lnm/b;

    invoke-static {v0}, Lnm/b;->g(Lnm/b;)I

    move-result v1

    iget-object v2, p0, Lnm/b$e;->a:Lnm/b;

    invoke-static {v2}, Lnm/b;->h(Lnm/b;)I

    move-result v2

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lnm/b;->f(Lnm/b;Z)Z

    return-void
.end method
