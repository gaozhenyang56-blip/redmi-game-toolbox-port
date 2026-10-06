.class Ls8/x$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls8/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# static fields
.field private static a:Ls8/x;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ls8/x;

    invoke-direct {v0}, Ls8/x;-><init>()V

    sput-object v0, Ls8/x$d;->a:Ls8/x;

    return-void
.end method

.method static synthetic a()Ls8/x;
    .locals 1

    sget-object v0, Ls8/x$d;->a:Ls8/x;

    return-object v0
.end method
