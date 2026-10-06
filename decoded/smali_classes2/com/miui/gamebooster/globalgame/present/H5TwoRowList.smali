.class public Lcom/miui/gamebooster/globalgame/present/H5TwoRowList;
.super Lcom/miui/gamebooster/globalgame/present/H5OneRowList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/globalgame/present/H5TwoRowList$VH;
    }
.end annotation


# static fields
.field private static b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/gamebooster/globalgame/present/H5TwoRowList;->b:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0b044f
        0x7f0b0450
    .end array-data
.end method

.method static synthetic a()[I
    .locals 1

    sget-object v0, Lcom/miui/gamebooster/globalgame/present/H5TwoRowList;->b:[I

    return-object v0
.end method
