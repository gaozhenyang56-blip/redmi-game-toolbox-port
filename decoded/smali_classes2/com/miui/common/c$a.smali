.class public final Lcom/miui/common/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/common/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lx4/y;->c()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/common/c$a;->a:Ljava/lang/String;

    return-void
.end method
