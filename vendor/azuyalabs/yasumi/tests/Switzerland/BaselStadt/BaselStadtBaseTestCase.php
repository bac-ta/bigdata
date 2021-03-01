<?php
/**
 * This file is part of the Yasumi package.
 *
 * Copyright (c) 2015 - 2019 AzuyaLabs
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 * @author Sacha Telgenhof <me@sachatelgenhof.com>
 */

namespace Yasumi\tests\Switzerland\BaselStadt;

use Yasumi\tests\Switzerland\SwitzerlandBaseTestCase;
use Yasumi\tests\YasumiBase;

/**
 * Base class for test cases of the Basel Stadt (Switzerland) holiday provider.
 */
abstract class BaselStadtBaseTestCase extends SwitzerlandBaseTestCase
{
    use YasumiBase;

    /**
     * Name of the region (e.g. country / state) to be tested
     */
    const REGION = 'Switzerland/BaselStadt';

    /**
     * Timezone in which this provider has holidays defined
     */
    const TIMEZONE = 'Europe/Zurich';

    /**
     * Locale that is considered common for this provider
     */
    const LOCALE = 'de_CH';
}
