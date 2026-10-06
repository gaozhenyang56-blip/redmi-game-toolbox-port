.class Lm6/d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm6/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final a:Lm6/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lm6/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lm6/d;-><init>(Lm6/d$a;)V

    sput-object v0, Lm6/d$b;->a:Lm6/d;

    return-void
.end method

.method static synthetic a()Lm6/d;
    .locals 1

    sget-object v0, Lm6/d$b;->a:Lm6/d;

    return-object v0
.end method
