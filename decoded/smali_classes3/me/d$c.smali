.class Lme/d$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# static fields
.field private static final a:Lme/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lme/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lme/d;-><init>(Lme/d$a;)V

    sput-object v0, Lme/d$c;->a:Lme/d;

    return-void
.end method

.method static synthetic a()Lme/d;
    .locals 1

    sget-object v0, Lme/d$c;->a:Lme/d;

    return-object v0
.end method
