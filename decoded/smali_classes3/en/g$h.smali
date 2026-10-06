.class public abstract Len/g$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Len/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "h"
.end annotation


# static fields
.field public static final a:Len/g$h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Len/g$h$a;

    invoke-direct {v0}, Len/g$h$a;-><init>()V

    sput-object v0, Len/g$h;->a:Len/g$h;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Len/g;)V
    .locals 0

    return-void
.end method

.method public abstract b(Len/i;)V
.end method
