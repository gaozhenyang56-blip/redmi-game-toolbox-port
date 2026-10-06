.class public Ldf/c;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/c$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String;

.field private static final d:Z


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ldf/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Ldf/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldf/c;->c:Ljava/lang/String;

    const-string v0, "persist.sys.handwriting.enable.default"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lx4/v1;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ldf/c;->d:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ldf/c$a;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Ldf/c;->a:Landroid/content/Context;

    iput-object p3, p0, Ldf/c;->b:Ldf/c$a;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-boolean v0, Ldf/c;->d:Z

    const-string v1, "stylus_handwriting_enable"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Ldf/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "stylus_handwriting_enable"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onChange(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p1, p0, Ldf/c;->a:Landroid/content/Context;

    invoke-virtual {p0, p1}, Ldf/c;->a(Landroid/content/Context;)Z

    move-result p1

    sget-object v0, Ldf/c;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object p1, p0, Ldf/c;->b:Ldf/c$a;

    invoke-interface {p1}, Ldf/c$a;->b()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ldf/c;->b:Ldf/c$a;

    invoke-interface {p1}, Ldf/c$a;->c()V

    :goto_0
    return-void
.end method
