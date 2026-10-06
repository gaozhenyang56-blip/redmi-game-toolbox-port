.class public abstract Lza/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lza/a$a;
    }
.end annotation


# static fields
.field public static final a:Lza/a$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lza/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lza/a$a;-><init>(Lbk/g;)V

    sput-object v0, Lza/a;->a:Lza/a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
