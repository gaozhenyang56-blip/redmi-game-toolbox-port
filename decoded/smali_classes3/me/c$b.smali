.class final Lme/c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# static fields
.field private static final a:Lme/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lme/c;

    invoke-direct {v0}, Lme/c;-><init>()V

    sput-object v0, Lme/c$b;->a:Lme/c;

    return-void
.end method

.method static synthetic a()Lme/c;
    .locals 1

    sget-object v0, Lme/c$b;->a:Lme/c;

    return-object v0
.end method
