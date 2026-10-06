.class public final Lxc/v;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxc/v$a;
    }
.end annotation


# static fields
.field public static final a:Lxc/v$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lxc/v$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lxc/v$a;-><init>(Lbk/g;)V

    sput-object v0, Lxc/v;->a:Lxc/v$a;

    return-void
.end method
