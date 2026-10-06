.class public final Lcom/gzy/redmiport/ShizukuSettingsActivity;
.super Landroid/app/Activity;
.source "ShizukuSettingsActivity.java"


# instance fields
.field private final dead:Lrikka/shizuku/Shizuku$OnBinderDeadListener;

.field private final permission:Lrikka/shizuku/Shizuku$OnRequestPermissionResultListener;

.field private probe:Landroid/widget/TextView;

.field private final received:Lrikka/shizuku/Shizuku$OnBinderReceivedListener;

.field private status:Landroid/widget/TextView;

.field private final worker:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 17
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/gzy/redmiport/ShizukuSettingsActivity;->worker:Ljava/util/concurrent/ExecutorService;

    .line 18
    new-instance v0, Lcom/gzy/redmiport/ShizukuSettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/gzy/redmiport/ShizukuSettingsActivity$1;-><init>(Lcom/gzy/redmiport/ShizukuSettingsActivity;)V

    iput-object v0, p0, Lcom/gzy/redmiport/ShizukuSettingsActivity;->received:Lrikka/shizuku/Shizuku$OnBinderReceivedListener;

    .line 21
    new-instance v0, Lcom/gzy/redmiport/ShizukuSettingsActivity$2;

    invoke-direct {v0, p0}, Lcom/gzy/redmiport/ShizukuSettingsActivity$2;-><init>(Lcom/gzy/redmiport/ShizukuSettingsActivity;)V

    iput-object v0, p0, Lcom/gzy/redmiport/ShizukuSettingsActivity;->dead:Lrikka/shizuku/Shizuku$OnBinderDeadListener;

    .line 24
    new-instance v0, Lcom/gzy/redmiport/ShizukuSettingsActivity$3;

    invoke-direct {v0, p0}, Lcom/gzy/redmiport/ShizukuSettingsActivity$3;-><init>(Lcom/gzy/redmiport/ShizukuSettingsActivity;)V

    iput-object v0, p0, Lcom/gzy/redmiport/ShizukuSettingsActivity;->permission:Lrikka/shizuku/Shizuku$OnRequestPermissionResultListener;

    .line 15
    return-void
.end method

.method static synthetic access$0(Lcom/gzy/redmiport/ShizukuSettingsActivity;)V
    .registers 1

    .line 55
    invoke-direct {p0}, Lcom/gzy/redmiport/ShizukuSettingsActivity;->refreshOnUi()V

    return-void
.end method

.method static synthetic access$1(Lcom/gzy/redmiport/ShizukuSettingsActivity;)V
    .registers 1

    .line 68
    invoke-direct {p0}, Lcom/gzy/redmiport/ShizukuSettingsActivity;->authorize()V

    return-void
.end method

.method static synthetic access$2(Lcom/gzy/redmiport/ShizukuSettingsActivity;)V
    .registers 1

    .line 76
    invoke-direct {p0}, Lcom/gzy/redmiport/ShizukuSettingsActivity;->openManager()V

    return-void
.end method

.method static synthetic access$3(Lcom/gzy/redmiport/ShizukuSettingsActivity;Landroid/content/Intent;)V
    .registers 2

    .line 81
    invoke-direct {p0, p1}, Lcom/gzy/redmiport/ShizukuSettingsActivity;->launch(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$4(Lcom/gzy/redmiport/ShizukuSettingsActivity;)V
    .registers 1

    .line 84
    invoke-direct {p0}, Lcom/gzy/redmiport/ShizukuSettingsActivity;->testChannel()V

    return-void
.end method

.method static synthetic access$5(Lcom/gzy/redmiport/ShizukuSettingsActivity;)V
    .registers 1

    .line 56
    invoke-direct {p0}, Lcom/gzy/redmiport/ShizukuSettingsActivity;->refresh()V

    return-void
.end method

.method static synthetic access$6(Lcom/gzy/redmiport/ShizukuSettingsActivity;)Landroid/widget/TextView;
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/gzy/redmiport/ShizukuSettingsActivity;->probe:Landroid/widget/TextView;

    return-object p0
.end method

.method private authorize()V
    .registers 4

    .line 70
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lrikka/shizuku/Shizuku;->pingBinder()Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "\u8bf7\u5148\u542f\u52a8 Shizuku \u670d\u52a1"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    .line 71
    :cond_11
    invoke-static {}, Lrikka/shizuku/Shizuku;->checkSelfPermission()I

    move-result v1

    if-nez v1, :cond_1b

    invoke-direct {p0}, Lcom/gzy/redmiport/ShizukuSettingsActivity;->refresh()V

    return-void

    .line 72
    :cond_1b
    invoke-static {}, Lrikka/shizuku/Shizuku;->shouldShowRequestPermissionRationale()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-direct {p0}, Lcom/gzy/redmiport/ShizukuSettingsActivity;->openManager()V

    return-void

    .line 73
    :cond_25
    const/16 v1, 0x579

    invoke-static {v1}, Lrikka/shizuku/Shizuku;->requestPermission(I)V
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2b

    .line 74
    goto :goto_3a

    :catchall_2b
    move-exception v1

    const-string v2, "Shizuku settings authorization"

    invoke-static {v2, v1}, Lcom/gzy/redmidiag/CrashReporter;->record(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v1, "\u6388\u6743\u5931\u8d25\uff0c\u8bf7\u67e5\u770b\u65e5\u5fd7"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 75
    :goto_3a
    return-void
.end method

.method private button(Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .registers 5

    .line 53
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setAllCaps(Z)V

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 54
    return-void
.end method

.method private launch(Landroid/content/Intent;)V
    .registers 3

    .line 82
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/gzy/redmiport/ShizukuSettingsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_f

    :catch_4
    move-exception p1

    const-string p1, "\u65e0\u6cd5\u6253\u5f00\u6b64\u9875\u9762"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 83
    :goto_f
    return-void
.end method

.method private openManager()V
    .registers 3

    .line 77
    invoke-virtual {p0}, Lcom/gzy/redmiport/ShizukuSettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "moe.shizuku.privileged.api"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 78
    if-nez v0, :cond_17

    const-string v0, "\u672a\u627e\u5230 Shizuku \u5e94\u7528"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1a

    .line 79
    :cond_17
    invoke-direct {p0, v0}, Lcom/gzy/redmiport/ShizukuSettingsActivity;->launch(Landroid/content/Intent;)V

    .line 80
    :goto_1a
    return-void
.end method

.method private refresh()V
    .registers 6

    .line 57
    const-string v0, "\u672a\u6388\u6743"

    .line 59
    :try_start_2
    invoke-static {}, Lrikka/shizuku/Shizuku;->pingBinder()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 60
    const-string v1, "\u8fd0\u884c\u4e2d"

    .line 61
    invoke-static {}, Lrikka/shizuku/Shizuku;->checkSelfPermission()I

    move-result v2

    if-nez v2, :cond_12

    const-string v0, "\u5df2\u6388\u6743"
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_16

    .line 63
    :cond_12
    goto :goto_19

    .line 59
    :cond_13
    const-string v1, "\u672a\u8fd0\u884c"

    goto :goto_19

    .line 63
    :catchall_16
    move-exception v1

    const-string v1, "\u8fde\u63a5\u5931\u8d25"

    .line 64
    :goto_19
    iget-object v2, p0, Lcom/gzy/redmiport/ShizukuSettingsActivity;->status:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Shizuku \u670d\u52a1\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n\u5e94\u7528\u6388\u6743\uff1a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 65
    const-string v1, "\n\u60ac\u6d6e\u7a97\u6743\u9650\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3f

    const-string v1, "\u5df2\u5141\u8bb8"

    goto :goto_41

    :cond_3f
    const-string v1, "\u672a\u5141\u8bb8"

    :goto_41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/gzy/redmiport/GameStore;->status(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/gzy/redmiport/SidebarRuntime;->status()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\n\u767d\u6761\u4e0e\u7cfb\u7edf\u4fa7\u8fb9\u5c0f\u7a97\u91cd\u53e0\u65f6\uff0c\u53ef\u5728\u539f\u8bbe\u7f6e\u4e2d\u8c03\u6574\u767d\u6761\u5de6\u53f3\u4f4d\u7f6e\u3001\u9ad8\u5ea6\u4e0e\u8fb9\u7f18\u5185\u7f29\u3002"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    return-void
.end method

.method private refreshOnUi()V
    .registers 2

    .line 55
    new-instance v0, Lcom/gzy/redmiport/ShizukuSettingsActivity$12;

    invoke-direct {v0, p0}, Lcom/gzy/redmiport/ShizukuSettingsActivity$12;-><init>(Lcom/gzy/redmiport/ShizukuSettingsActivity;)V

    invoke-virtual {p0, v0}, Lcom/gzy/redmiport/ShizukuSettingsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private testChannel()V
    .registers 3

    .line 85
    iget-object v0, p0, Lcom/gzy/redmiport/ShizukuSettingsActivity;->probe:Landroid/widget/TextView;

    const-string v1, "\u6b63\u5728\u68c0\u6d4b\u2026"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p0, Lcom/gzy/redmiport/ShizukuSettingsActivity;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/gzy/redmiport/ShizukuSettingsActivity$13;

    invoke-direct {v1, p0}, Lcom/gzy/redmiport/ShizukuSettingsActivity$13;-><init>(Lcom/gzy/redmiport/ShizukuSettingsActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 100
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    new-instance p1, Landroid/widget/ScrollView;

    invoke-direct {p1, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 31
    invoke-virtual {p0}, Lcom/gzy/redmiport/ShizukuSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41a00000    # 20.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 32
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/gzy/redmiport/ShizukuSettingsActivity;->setContentView(Landroid/view/View;)V

    .line 33
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v2, "Shizuku"

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x41d00000    # 26.0f

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 34
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/gzy/redmiport/ShizukuSettingsActivity;->status:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/gzy/redmiport/ShizukuSettingsActivity;->status:Landroid/widget/TextView;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object p1, p0, Lcom/gzy/redmiport/ShizukuSettingsActivity;->status:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object p1, p0, Lcom/gzy/redmiport/ShizukuSettingsActivity;->status:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 35
    new-instance p1, Lcom/gzy/redmiport/ShizukuSettingsActivity$4;

    invoke-direct {p1, p0}, Lcom/gzy/redmiport/ShizukuSettingsActivity$4;-><init>(Lcom/gzy/redmiport/ShizukuSettingsActivity;)V

    const-string v3, "\u7533\u8bf7\u6388\u6743"

    invoke-direct {p0, v0, v3, p1}, Lcom/gzy/redmiport/ShizukuSettingsActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 36
    new-instance p1, Lcom/gzy/redmiport/ShizukuSettingsActivity$5;

    invoke-direct {p1, p0}, Lcom/gzy/redmiport/ShizukuSettingsActivity$5;-><init>(Lcom/gzy/redmiport/ShizukuSettingsActivity;)V

    const-string v3, "\u6253\u5f00 Shizuku"

    invoke-direct {p0, v0, v3, p1}, Lcom/gzy/redmiport/ShizukuSettingsActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 37
    new-instance p1, Lcom/gzy/redmiport/ShizukuSettingsActivity$6;

    invoke-direct {p1, p0}, Lcom/gzy/redmiport/ShizukuSettingsActivity$6;-><init>(Lcom/gzy/redmiport/ShizukuSettingsActivity;)V

    const-string v3, "\u60ac\u6d6e\u7a97\u6743\u9650"

    invoke-direct {p0, v0, v3, p1}, Lcom/gzy/redmiport/ShizukuSettingsActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 40
    new-instance p1, Lcom/gzy/redmiport/ShizukuSettingsActivity$7;

    invoke-direct {p1, p0}, Lcom/gzy/redmiport/ShizukuSettingsActivity$7;-><init>(Lcom/gzy/redmiport/ShizukuSettingsActivity;)V

    const-string v3, "\u68c0\u6d4b FPS \u6570\u636e\u901a\u9053"

    invoke-direct {p0, v0, v3, p1}, Lcom/gzy/redmiport/ShizukuSettingsActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 41
    new-instance p1, Lcom/gzy/redmiport/ShizukuSettingsActivity$8;

    invoke-direct {p1, p0}, Lcom/gzy/redmiport/ShizukuSettingsActivity$8;-><init>(Lcom/gzy/redmiport/ShizukuSettingsActivity;)V

    const-string v3, "\u542f\u52a8\u4fa7\u680f\u76d1\u6d4b"

    invoke-direct {p0, v0, v3, p1}, Lcom/gzy/redmiport/ShizukuSettingsActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 42
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/gzy/redmiport/ShizukuSettingsActivity;->probe:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/gzy/redmiport/ShizukuSettingsActivity;->probe:Landroid/widget/TextView;

    invoke-virtual {p1, v2, v1, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object p1, p0, Lcom/gzy/redmiport/ShizukuSettingsActivity;->probe:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 43
    new-instance p1, Lcom/gzy/redmiport/ShizukuSettingsActivity$9;

    invoke-direct {p1, p0}, Lcom/gzy/redmiport/ShizukuSettingsActivity$9;-><init>(Lcom/gzy/redmiport/ShizukuSettingsActivity;)V

    const-string v1, "\u5237\u65b0\u72b6\u6001"

    invoke-direct {p0, v0, v1, p1}, Lcom/gzy/redmiport/ShizukuSettingsActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 44
    new-instance p1, Lcom/gzy/redmiport/ShizukuSettingsActivity$10;

    invoke-direct {p1, p0}, Lcom/gzy/redmiport/ShizukuSettingsActivity$10;-><init>(Lcom/gzy/redmiport/ShizukuSettingsActivity;)V

    const-string v1, "\u5d29\u6e83\u65e5\u5fd7"

    invoke-direct {p0, v0, v1, p1}, Lcom/gzy/redmiport/ShizukuSettingsActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 47
    new-instance p1, Lcom/gzy/redmiport/ShizukuSettingsActivity$11;

    invoke-direct {p1, p0}, Lcom/gzy/redmiport/ShizukuSettingsActivity$11;-><init>(Lcom/gzy/redmiport/ShizukuSettingsActivity;)V

    const-string v1, "\u8fd4\u56de"

    invoke-direct {p0, v0, v1, p1}, Lcom/gzy/redmiport/ShizukuSettingsActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 48
    iget-object p1, p0, Lcom/gzy/redmiport/ShizukuSettingsActivity;->received:Lrikka/shizuku/Shizuku$OnBinderReceivedListener;

    invoke-static {p1}, Lrikka/shizuku/Shizuku;->addBinderReceivedListenerSticky(Lrikka/shizuku/Shizuku$OnBinderReceivedListener;)V

    iget-object p1, p0, Lcom/gzy/redmiport/ShizukuSettingsActivity;->dead:Lrikka/shizuku/Shizuku$OnBinderDeadListener;

    invoke-static {p1}, Lrikka/shizuku/Shizuku;->addBinderDeadListener(Lrikka/shizuku/Shizuku$OnBinderDeadListener;)V

    .line 49
    iget-object p1, p0, Lcom/gzy/redmiport/ShizukuSettingsActivity;->permission:Lrikka/shizuku/Shizuku$OnRequestPermissionResultListener;

    invoke-static {p1}, Lrikka/shizuku/Shizuku;->addRequestPermissionResultListener(Lrikka/shizuku/Shizuku$OnRequestPermissionResultListener;)V

    .line 50
    invoke-direct {p0}, Lcom/gzy/redmiport/ShizukuSettingsActivity;->refresh()V

    .line 51
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/gzy/redmiport/ShizukuSettingsActivity;->received:Lrikka/shizuku/Shizuku$OnBinderReceivedListener;

    invoke-static {v0}, Lrikka/shizuku/Shizuku;->removeBinderReceivedListener(Lrikka/shizuku/Shizuku$OnBinderReceivedListener;)Z

    iget-object v0, p0, Lcom/gzy/redmiport/ShizukuSettingsActivity;->dead:Lrikka/shizuku/Shizuku$OnBinderDeadListener;

    invoke-static {v0}, Lrikka/shizuku/Shizuku;->removeBinderDeadListener(Lrikka/shizuku/Shizuku$OnBinderDeadListener;)Z

    .line 104
    iget-object v0, p0, Lcom/gzy/redmiport/ShizukuSettingsActivity;->permission:Lrikka/shizuku/Shizuku$OnRequestPermissionResultListener;

    invoke-static {v0}, Lrikka/shizuku/Shizuku;->removeRequestPermissionResultListener(Lrikka/shizuku/Shizuku$OnRequestPermissionResultListener;)Z

    iget-object v0, p0, Lcom/gzy/redmiport/ShizukuSettingsActivity;->worker:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 105
    return-void
.end method

.method protected onResume()V
    .registers 2

    .line 101
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/gzy/redmiport/ShizukuSettingsActivity;->status:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/gzy/redmiport/ShizukuSettingsActivity;->refresh()V

    :cond_a
    return-void
.end method
