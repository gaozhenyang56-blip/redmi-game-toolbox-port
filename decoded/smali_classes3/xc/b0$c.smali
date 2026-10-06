.class Lxc/b0$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxc/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# static fields
.field private static final a:Lxc/b0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lxc/b0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lxc/b0;-><init>(Lxc/b0$a;)V

    sput-object v0, Lxc/b0$c;->a:Lxc/b0;

    return-void
.end method

.method static synthetic a()Lxc/b0;
    .locals 1

    sget-object v0, Lxc/b0$c;->a:Lxc/b0;

    return-object v0
.end method
