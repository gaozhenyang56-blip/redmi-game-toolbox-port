.class public Lkh/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkh/c$a;
    }
.end annotation


# static fields
.field private static d:Lkh/c;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lkh/c$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lkh/c;
    .locals 1

    sget-object v0, Lkh/c;->d:Lkh/c;

    if-nez v0, :cond_0

    new-instance v0, Lkh/c;

    invoke-direct {v0}, Lkh/c;-><init>()V

    sput-object v0, Lkh/c;->d:Lkh/c;

    :cond_0
    sget-object v0, Lkh/c;->d:Lkh/c;

    return-object v0
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lkh/c;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkh/c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkh/c$a;

    iget v1, p0, Lkh/c;->a:I

    iget v2, p0, Lkh/c;->b:I

    invoke-interface {v0, v1, v2}, Lkh/c$a;->a(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public b()Z
    .locals 2

    iget v0, p0, Lkh/c;->a:I

    iget v1, p0, Lkh/c;->b:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lkh/c;->a:I

    invoke-direct {p0}, Lkh/c;->c()V

    return-void
.end method

.method public e(Lkh/c$a;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lkh/c;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, Lkh/c;->b:I

    return-void
.end method
