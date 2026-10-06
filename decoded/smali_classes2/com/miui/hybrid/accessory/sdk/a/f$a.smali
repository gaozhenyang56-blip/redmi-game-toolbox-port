.class public final enum Lcom/miui/hybrid/accessory/sdk/a/f$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/hybrid/accessory/sdk/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/hybrid/accessory/sdk/a/f$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/miui/hybrid/accessory/sdk/a/f$a;

.field public static final enum b:Lcom/miui/hybrid/accessory/sdk/a/f$a;

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/hybrid/accessory/sdk/a/f$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic f:[Lcom/miui/hybrid/accessory/sdk/a/f$a;


# instance fields
.field private final d:S

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/miui/hybrid/accessory/sdk/a/f$a;

    const-string v1, "STATE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "state"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/hybrid/accessory/sdk/a/f$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/f$a;->a:Lcom/miui/hybrid/accessory/sdk/a/f$a;

    new-instance v1, Lcom/miui/hybrid/accessory/sdk/a/f$a;

    const-string v4, "PACKAGE_NAME"

    const/4 v5, 0x2

    const-string v6, "packageName"

    invoke-direct {v1, v4, v3, v5, v6}, Lcom/miui/hybrid/accessory/sdk/a/f$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v1, Lcom/miui/hybrid/accessory/sdk/a/f$a;->b:Lcom/miui/hybrid/accessory/sdk/a/f$a;

    new-array v4, v5, [Lcom/miui/hybrid/accessory/sdk/a/f$a;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    sput-object v4, Lcom/miui/hybrid/accessory/sdk/a/f$a;->f:[Lcom/miui/hybrid/accessory/sdk/a/f$a;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/f$a;->c:Ljava/util/Map;

    const-class v0, Lcom/miui/hybrid/accessory/sdk/a/f$a;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/hybrid/accessory/sdk/a/f$a;

    sget-object v2, Lcom/miui/hybrid/accessory/sdk/a/f$a;->c:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/miui/hybrid/accessory/sdk/a/f$a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-short p3, p0, Lcom/miui/hybrid/accessory/sdk/a/f$a;->d:S

    iput-object p4, p0, Lcom/miui/hybrid/accessory/sdk/a/f$a;->e:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/hybrid/accessory/sdk/a/f$a;
    .locals 1

    const-class v0, Lcom/miui/hybrid/accessory/sdk/a/f$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/hybrid/accessory/sdk/a/f$a;

    return-object p0
.end method

.method public static values()[Lcom/miui/hybrid/accessory/sdk/a/f$a;
    .locals 1

    sget-object v0, Lcom/miui/hybrid/accessory/sdk/a/f$a;->f:[Lcom/miui/hybrid/accessory/sdk/a/f$a;

    invoke-virtual {v0}, [Lcom/miui/hybrid/accessory/sdk/a/f$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/hybrid/accessory/sdk/a/f$a;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/f$a;->e:Ljava/lang/String;

    return-object v0
.end method
