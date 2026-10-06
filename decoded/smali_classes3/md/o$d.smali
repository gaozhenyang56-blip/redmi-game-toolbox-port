.class Lmd/o$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmd/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# static fields
.field private static a:Lmd/o;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lmd/o;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmd/o;-><init>(Lmd/o$a;)V

    sput-object v0, Lmd/o$d;->a:Lmd/o;

    return-void
.end method

.method static synthetic a()Lmd/o;
    .locals 1

    sget-object v0, Lmd/o$d;->a:Lmd/o;

    return-object v0
.end method
