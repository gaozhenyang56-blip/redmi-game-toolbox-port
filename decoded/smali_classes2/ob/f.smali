.class public abstract Lob/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lob/f$a;
    }
.end annotation


# static fields
.field public static final a:Lob/f$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lob/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lob/f$a;-><init>(Lbk/g;)V

    sput-object v0, Lob/f;->a:Lob/f$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method
