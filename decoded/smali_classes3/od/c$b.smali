.class Lod/c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lod/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static a:Lod/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lod/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lod/c;-><init>(Lod/c$a;)V

    sput-object v0, Lod/c$b;->a:Lod/c;

    return-void
.end method

.method static synthetic a()Lod/c;
    .locals 1

    sget-object v0, Lod/c$b;->a:Lod/c;

    return-object v0
.end method
