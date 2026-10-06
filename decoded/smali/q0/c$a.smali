.class public final Lq0/c$a;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lq0/c;


# direct methods
.method public constructor <init>(Lq0/c;)V
    .locals 0

    iput-object p1, p0, Lq0/c$a;->a:Lq0/c;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 0

    iget-object p1, p0, Lq0/c$a;->a:Lq0/c;

    invoke-virtual {p1}, Lq0/c;->p()V

    return-void
.end method
