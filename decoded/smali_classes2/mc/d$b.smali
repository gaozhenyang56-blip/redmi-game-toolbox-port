.class Lmc/d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmc/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final a:Lmc/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lmc/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmc/d;-><init>(Lmc/d$a;)V

    sput-object v0, Lmc/d$b;->a:Lmc/d;

    return-void
.end method

.method static synthetic a()Lmc/d;
    .locals 1

    sget-object v0, Lmc/d$b;->a:Lmc/d;

    return-object v0
.end method
