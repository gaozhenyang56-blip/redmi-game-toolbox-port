.class Lc4/a$b;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc4/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lc4/a$b;->a:Landroid/content/Context;

    return-void
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lc4/a$b;->a:Landroid/content/Context;

    invoke-static {v0}, Lef/x;->J(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lc4/a$b;->a:Landroid/content/Context;

    const-string v2, "wechat_show_cnt"

    invoke-static {v1, v2}, Lc4/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    if-nez v0, :cond_0

    iget-object v0, p0, Lc4/a$b;->a:Landroid/content/Context;

    const/16 v1, 0xbb8

    invoke-static {v0, v1}, Lc4/a;->b(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc4/a$b;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc4/p;->b(Landroid/content/Context;Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    invoke-direct {p0}, Lc4/a$b;->a()V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Lc4/a$b;->a()V

    return-void
.end method
