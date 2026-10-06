.class Lud/j$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lud/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final a:Lud/j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lud/j;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lud/j;-><init>(Lud/j$a;)V

    sput-object v0, Lud/j$b;->a:Lud/j;

    return-void
.end method

.method static synthetic a()Lud/j;
    .locals 1

    sget-object v0, Lud/j$b;->a:Lud/j;

    return-object v0
.end method
