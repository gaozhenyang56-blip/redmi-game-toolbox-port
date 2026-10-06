.class Lmd/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmd/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final a:Lmd/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lmd/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmd/b;-><init>(Lmd/b$a;)V

    sput-object v0, Lmd/b$b;->a:Lmd/b;

    return-void
.end method

.method static synthetic a()Lmd/b;
    .locals 1

    sget-object v0, Lmd/b$b;->a:Lmd/b;

    return-object v0
.end method
