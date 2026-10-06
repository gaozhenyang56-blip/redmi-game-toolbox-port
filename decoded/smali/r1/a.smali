.class public final enum Lr1/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lr1/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lr1/a;

.field public static final enum b:Lr1/a;

.field public static final enum c:Lr1/a;

.field public static final enum d:Lr1/a;

.field public static final enum e:Lr1/a;

.field public static final enum f:Lr1/a;

.field public static final enum g:Lr1/a;

.field public static final enum h:Lr1/a;

.field public static final enum i:Lr1/a;

.field public static final enum j:Lr1/a;

.field public static final enum k:Lr1/a;

.field private static final synthetic l:[Lr1/a;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lr1/a;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lr1/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lr1/a;->a:Lr1/a;

    new-instance v1, Lr1/a;

    const-string v3, "ABSENT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lr1/a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lr1/a;->b:Lr1/a;

    new-instance v3, Lr1/a;

    const-string v5, "PIN_REQUIRED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lr1/a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lr1/a;->c:Lr1/a;

    new-instance v5, Lr1/a;

    const-string v7, "PUK_REQUIRED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lr1/a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lr1/a;->d:Lr1/a;

    new-instance v7, Lr1/a;

    const-string v9, "NETWORK_LOCKED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lr1/a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lr1/a;->e:Lr1/a;

    new-instance v9, Lr1/a;

    const-string v11, "READY"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lr1/a;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lr1/a;->f:Lr1/a;

    new-instance v11, Lr1/a;

    const-string v13, "NOT_READY"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lr1/a;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lr1/a;->g:Lr1/a;

    new-instance v13, Lr1/a;

    const-string v15, "PERM_DISABLED"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lr1/a;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lr1/a;->h:Lr1/a;

    new-instance v15, Lr1/a;

    const-string v14, "CARD_IO_ERROR"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lr1/a;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lr1/a;->i:Lr1/a;

    new-instance v14, Lr1/a;

    const-string v12, "CARD_RESTRICTED"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lr1/a;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lr1/a;->j:Lr1/a;

    new-instance v12, Lr1/a;

    const-string v10, "LOADED"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lr1/a;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lr1/a;->k:Lr1/a;

    const/16 v10, 0xb

    new-array v10, v10, [Lr1/a;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    const/4 v0, 0x3

    aput-object v5, v10, v0

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    const/16 v0, 0x8

    aput-object v15, v10, v0

    const/16 v0, 0x9

    aput-object v14, v10, v0

    aput-object v12, v10, v8

    sput-object v10, Lr1/a;->l:[Lr1/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(I)Lr1/a;
    .locals 0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_0
    sget-object p0, Lr1/a;->k:Lr1/a;

    return-object p0

    :pswitch_1
    sget-object p0, Lr1/a;->j:Lr1/a;

    return-object p0

    :pswitch_2
    sget-object p0, Lr1/a;->i:Lr1/a;

    return-object p0

    :pswitch_3
    sget-object p0, Lr1/a;->h:Lr1/a;

    return-object p0

    :pswitch_4
    sget-object p0, Lr1/a;->g:Lr1/a;

    return-object p0

    :pswitch_5
    sget-object p0, Lr1/a;->f:Lr1/a;

    return-object p0

    :pswitch_6
    sget-object p0, Lr1/a;->e:Lr1/a;

    return-object p0

    :pswitch_7
    sget-object p0, Lr1/a;->d:Lr1/a;

    return-object p0

    :pswitch_8
    sget-object p0, Lr1/a;->c:Lr1/a;

    return-object p0

    :pswitch_9
    sget-object p0, Lr1/a;->b:Lr1/a;

    return-object p0

    :pswitch_a
    sget-object p0, Lr1/a;->a:Lr1/a;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lr1/a;
    .locals 1

    const-class v0, Lr1/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lr1/a;

    return-object p0
.end method

.method public static values()[Lr1/a;
    .locals 1

    sget-object v0, Lr1/a;->l:[Lr1/a;

    invoke-virtual {v0}, [Lr1/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lr1/a;

    return-object v0
.end method
