.class public Lud/i$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lud/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field private static final a:Lud/i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lud/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lud/i;-><init>(Lud/i$a;)V

    sput-object v0, Lud/i$b;->a:Lud/i;

    return-void
.end method

.method static synthetic a()Lud/i;
    .locals 1

    sget-object v0, Lud/i$b;->a:Lud/i;

    return-object v0
.end method
