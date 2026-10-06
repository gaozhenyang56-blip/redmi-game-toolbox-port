.class public Lvm/a;
.super Landroid/view/animation/AnimationUtils;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvm/a$b;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lvm/a$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lvm/a$a;

    invoke-direct {v0}, Lvm/a$a;-><init>()V

    sput-object v0, Lvm/a;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static a()J
    .locals 3

    sget-object v0, Lvm/a;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvm/a$b;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, v0, Lvm/a$b;->a:J

    return-wide v1
.end method
