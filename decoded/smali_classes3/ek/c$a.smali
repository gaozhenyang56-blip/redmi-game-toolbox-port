.class public final Lek/c$a;
.super Lek/c;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lek/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lek/c;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lbk/g;)V
    .locals 0

    invoke-direct {p0}, Lek/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    invoke-static {}, Lek/c;->a()Lek/c;

    move-result-object v0

    invoke-virtual {v0}, Lek/c;->b()I

    move-result v0

    return v0
.end method
