.class public Ln1/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln1/j0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ln1/j0<",
        "Li1/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ln1/h;

.field private static final b:Lo1/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Ln1/h;

    invoke-direct {v0}, Ln1/h;-><init>()V

    sput-object v0, Ln1/h;->a:Ln1/h;

    const-string v1, "t"

    const-string v2, "f"

    const-string v3, "s"

    const-string v4, "j"

    const-string v5, "tr"

    const-string v6, "lh"

    const-string v7, "ls"

    const-string v8, "fc"

    const-string v9, "sc"

    const-string v10, "sw"

    const-string v11, "of"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo1/c$a;->a([Ljava/lang/String;)Lo1/c$a;

    move-result-object v0

    sput-object v0, Ln1/h;->b:Lo1/c$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lo1/c;F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Ln1/h;->b(Lo1/c;F)Li1/b;

    move-result-object p1

    return-object p1
.end method

.method public b(Lo1/c;F)Li1/b;
    .locals 17

    sget-object v0, Li1/b$a;->c:Li1/b$a;

    invoke-virtual/range {p1 .. p1}, Lo1/c;->e()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v9, v0

    move-object v6, v1

    move-object v7, v6

    move v10, v2

    move v13, v10

    move v14, v13

    move v8, v3

    move v11, v8

    move v12, v11

    move v15, v12

    move/from16 v16, v4

    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lo1/c;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Ln1/h;->b:Lo1/c$a;

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Lo1/c;->F(Lo1/c$a;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-virtual/range {p1 .. p1}, Lo1/c;->H()V

    invoke-virtual/range {p1 .. p1}, Lo1/c;->J()V

    goto :goto_0

    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lo1/c;->n()Z

    move-result v16

    goto :goto_0

    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Lo1/c;->o()D

    move-result-wide v2

    double-to-float v15, v2

    goto :goto_0

    :pswitch_2
    invoke-static/range {p1 .. p1}, Ln1/p;->d(Lo1/c;)I

    move-result v14

    goto :goto_0

    :pswitch_3
    invoke-static/range {p1 .. p1}, Ln1/p;->d(Lo1/c;)I

    move-result v13

    goto :goto_0

    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Lo1/c;->o()D

    move-result-wide v2

    double-to-float v12, v2

    goto :goto_0

    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Lo1/c;->o()D

    move-result-wide v2

    double-to-float v11, v2

    goto :goto_0

    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Lo1/c;->p()I

    move-result v10

    goto :goto_0

    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Lo1/c;->p()I

    move-result v0

    sget-object v9, Li1/b$a;->c:Li1/b$a;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-gt v0, v2, :cond_0

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Li1/b$a;->values()[Li1/b$a;

    move-result-object v2

    aget-object v9, v2, v0

    goto :goto_0

    :pswitch_8
    invoke-virtual/range {p1 .. p1}, Lo1/c;->o()D

    move-result-wide v2

    double-to-float v8, v2

    goto :goto_0

    :pswitch_9
    invoke-virtual/range {p1 .. p1}, Lo1/c;->t()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :pswitch_a
    invoke-virtual/range {p1 .. p1}, Lo1/c;->t()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_2
    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Lo1/c;->g()V

    new-instance v0, Li1/b;

    move-object v5, v0

    invoke-direct/range {v5 .. v16}, Li1/b;-><init>(Ljava/lang/String;Ljava/lang/String;FLi1/b$a;IFFIIFZ)V

    return-object v0

    nop

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
